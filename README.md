# Amazon SageMaker .NET Image Classification

Amazon SageMaker Notebooks get you started with Machine Learning quickly. This project will allow you to customize Sage Maker Notebook environments to support C# .NET so you can bring your C#.NET skills and get started with SageMaker Notebooks and Machine Learning on the AWS Platform. 

### Prerequisites

```
AWS Account
```

## Getting Started

Clone this repo to download the Jupyter Notebook and the Lifecycle Configuration script you will need to work in the SageMaker environment.

* Log into AWS Console and navigate to Amazon SageMaker
* Select 'Lifecycle configurations' and create a new configuration using the provided script in [LifecycleConfig.sh](LifecycleConfig.sh) for the 'Start Notebook' event
* Select 'Notebook instances' and create a new instance using the configuration created above
* Follow the steps outlined in [SageMakerDotNet.ipynb](SageMakerDotNet.ipynb) Notebook


## Contributing

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **Haider Abdullah** - *Initial work* 

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* [Try .NET Global Tool](https://www.hanselman.com/blog/AnnouncingNETJupyterNotebooks.aspx)
* [.NET Interactive Tool](https://devblogs.microsoft.com/dotnet/net-interactive-is-here-net-notebooks-preview-2/)
