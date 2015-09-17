<a href="https://www.portfolioeffect.com/">
  <img width="200" src="https://www.portfolioeffect.com/img/logo/portfolioeffect-logo-full-200-950.png" alt="PortfolioEffect">
</a>

# PortfolioEffect Quant - R Package 
R package for high frequency portfolio analysis, intraday strategy backtests and portfolio optimization.

## About PortfolioEffect

PortfolioEffect platform employs high frequency microstructure model pipeline, cloud computing and server-side 
market data to enable classic portfolio analysis at intraday horizons.

## Package Installation

### Install Latest JDK/JRE Runtime

Download and install latest Java distribution (JDK or JRE) for your platform from
[Oracle's website][]

### Configure Java Environment (Optional)

If you are using Windows, installation wizard from the previous step should have done everything for you.
If you are on Linux or Mac and you used a tarball file, you will need to manually append the following 
lines to /etc/environment using your favorite text editor:

			export JAVA_HOME=/path/to/java/folder
			export PATH=$PATH:$JAVA_HOME/bin

Apply environment changes:

			source /etc/environment

To complete with the set-up of Java environment inside R, run the following line:

			sudo R CMD javareconf

### Install Required Packages (Optional)
If you manually downloaded PortfolioEffect package (or you don't want to use CRAN
repositories for some reason), you would need to install all required package
dependencies first.

Start R from the command line or in your GUI editor and type

			install.packages(c("rJava", "ggplot2"))
			
### Build R Package and Documentation			
You are are building PortfolioEffect package from source, check out the source code from this repository
and use R build tools to create a package:

			R CMD build PortfolioEffect
			R CMD Rd2pdf PortfolioEffect
			  

## Account Credentials

### Locate API Credentials

All portfolio computations are performed on PortfolioEffect cloud servers.
To obtain a free non-professional account, you need to follow a quick sign-up
process on our [website][]

Please use a valid sign-up address - it will be used to email your
account activation link to enable API access then log in to you account and 
locate your API credentials on the main page:

<img src="https://www.portfolioeffect.com/img/screenshots/quant/tutorials/api-settings.png" alt="API Credentials">

### Set API Credentials in R

Run the following commands to set your account API credentials for the
PortfolioEffect R Package.

		  util_setCredentials('API Username', 'API Password', 'API Key')

You will need to do it only once as your credentials are stored between sessions
on your local machine to speed up future logons. You would need to repeat
this procedure if you change your account password or install PortfolioEffect
toolbox on another computer.

You are now ready to call PortfolioEffect methods.

## Portfolio Construction

### User Data

Users may supply their own historical datasets for index and position entries. 
This external data could be one a OHLC bar column element (e.g. 1-second close prices) or a vector of actual transaction prices that contains non-equidistant data points. 
You might want to pre-pend at least N =(4 x windowLength) data points to the
beginning of the interval of interest which would be used for initial calibration of portfolio metrics.

#### Create Portfolio 

Method [portfolio_create()][] takes a vector of index prices in the format (UTC timestamp, price) with UTC
timestamp expressed in milliseconds from 1970-01-01 00:00:00 EST.
		
		  Time          Value
		  [1,] 1412256601000 99.30
		  [2,] 1412256602000 99.33
		  [3,] 1412256603000 99.30
		  [4,] 1412256604000 99.26
		  [5,] 1412256605000 99.36
		  [6,] 1412256606000 99.36
		  [7,] 1412256607000 99.36
		  [8,] 1412256608000 99.38
		  [9,] 1412256609000 99.40
		  [10,] 1412256610000 99.37
		  
If index symbol is specified, it is silently ignored.

		  # Create portfolio
		  portfolio=portfolio_create(priceDataIx=spy.data)
		

#### Add Positions

Positions are added using [portfolio_addPosition()][] 
with 'priceData' in the same format as index price.

		  data(goog.data)
		  data(aapl.data)

		  # Single position without rebalancing
		  portfolio_addPosition(portfolio, 
		  			symbol='GOOG', 
		  			quantity=100, 
		  			priceData=goog.data) 

		  # Single position with rebalancing
		  portfolio_addPosition(portfolio, 
		  			symbol='AAPL', 
							quantity=c(300,150), 
							time=c("2014-09-01 09:00:00","2014-09-07 14:30:00"), 
							priceData=aapl.data)


### Server Data

At PortfolioEffect we are capturing and storing 1-second intraday bar history for a 
all NASDAQ traded equites (see [symbology][]).

This server-side dataset spans from January 2013 to the latest trading time minus five minutes. 
It could be used to construct asset portfolios and compute intraday portfolio metrics.

#### Create Portfolio

Method [portfolio_create()][] creates new asset portfolio or overwrites an existing portfolio object with the
same name.

When using server-side data, it only requires a time interval that would be
treated as a default position holding period unless positions are added with rebalancing.
Index symbol could be specified as well with a default value of "SPY" - SPDR S&P 500 ETF Trust.

Interval boundaries are passed in the following format:
		  
* "yyyy-MM-dd HH:MM:SS" (e.g. "2014-10-01 09:30:00")
* "yyyy-MM-dd" (e.g. "2014-10-01")
* "t-N" (e.g. "t-5" is latest trading time minus 5 days)
* UTC timestamp in milliseconds (mills from "1970-01-01 00:00:00") in EST time zone

For example:
  
		  # Timestamp in "yyyy-MM-dd HH:MM:SS" format
		  portfolio=portfolio_create(fromTime="2014-10-01 09:30:00", 
									 toTime="2014-10-02 16:00:00")
			
		  # Timestamp in "yyyy-MM-dd" format
		  portfolio=portfolio_create(fromTime="2014-10-01", 
									 toTime="2014-10-02")
			
		  # Timestamp in "t-N" format
		  portfolio=portfolio_create(fromTime="t-5", 
									 toTime="t")

#### Add Positions
Positions are added by calling [portfolio_addPosition()][]
method on a portfolio object with a list of symbols and quantities. For
positions that were rebalanced or had non-default holding periods a 'time' argument could be used to specify rebalancing timestamps.


	     portfolio_addPosition(portfolio,
							   symbol='GOOG', 
							   quantity=100)
			
		  # Multiple positions without rebalancing
		  portfolio_addPosition(portfolio,
								symbol=c('C','GOOG'),
								quantity=c(500,600))
			
		  # Single position with rebalancing
		  portfolio_addPosition(portfolio,
								symbol='AAPL', 
								quantity=c(300,150), 
								time=c("2014-09-01 09:00:00","2014-09-07 14:30:00"))


## License

This toolbox is released under the GPLv3 license. See the file LICENSE.

Usage of this toolbox with PortfolioEffect services shall be subject to the [Terms of Service][PortfolioEffect Terms].

## Copyright

Copyright &copy; 2015 PortfolioEffect

[PortfolioEffect Terms]: https://www.portfolioeffect.com/docs/terms
[website]: https://www.portfolioeffect.com/registration
[website downloads]: https://www.portfolioeffect.com/docs/platform/quant
[portfolio_create()]: https://www.portfolioeffect.com/docs/platform/quant/functions/general-functions/portfolio-create
[portfolio_addPosition()]: https://www.portfolioeffect.com/docs/platform/quant/functions/general-functions/portfolio-add-position
[symbology]: https://www.portfolioeffect.com/docs/symbology
[Oracle's website]: http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html