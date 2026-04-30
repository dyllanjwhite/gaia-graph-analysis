# gaia-graph-analysis
# Nearest-neighbor graph analysis of Gaia stellar data

This project explores graph-based analysis of stellar position data using a subset of the Gaia DR3 catalog. The goal is to understand spatial structure by constructing and analyzing k-nearest neighbor (k-NN) graphs in Python.

# Objective

Construct nearest-neighbor graphs and analyze structural properties such as: 
- connectivity
- degree distribution
- clustering behavior
- Graph connectivity
- Degree distribution
- Clustering behavior

We also compare results from real Gaia data to a synthetic baseline to highlight meaningful spatial structure.

# Methods

- Retrieved real Gaia DR3 data using astroquery
- Performed exploratory data analysis (EDA) using pandas and matplotlib
- Constructed k-NN graphs using scikit-learn
- Modeled graph structure using networkx
- Evaluated graph metrics across varying values of k

# Key Results

- As k increases, the graph becomes more connected and dense
- The number of connected components rapidly decreases, reaching a single connected component for moderate k
- Clustering coefficient increases and stabilizes, indicating stronger local structure
- Real Gaia data exhibits more meaningful spatial structure compared to synthetic uniform data

# Repository Structure

- data/ # Gaia dataset (CSV) 
- figures/ # Generated plots 
- notebooks/ # Jupyter notebook analysis (.ipynb) 
- reports/ # Final PDF and HTML reports 
- scripts/ # Supporting scripts (R / Python) 
- notes/ # Drafts and observations

# Tools and Libraries

- Python (Jupyter Notebook)
- pandas
- numpy
- matplotlib
- scikit-learn
- networkx
- astroquery

# Conclusion

This project demonstrates how graph-based methods can reveal meaningful spatial structure in astronomical datasets. The k-NN framework provides a flexible way to study connectivity, clustering, and density in stellar distributions.
