import pandas as pd

scores = pd.DataFrame({"name": ["Ada", "Lin", "Sam"], "score": [85, 91, 88]})
print(f"Rows: {len(scores)}")
print(f"Average score: {scores['score'].mean():.1f}")
