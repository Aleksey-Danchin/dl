# Scikit-learn — Learning Roadmap

> **Цель:** классический ML от A до Z — предобработка, обучение, оценка, выбор модели.

Прогресс: `[ ]` не начато · `[~]` в процессе · `[x]` изучено

---

## Уровень 1 — Философия и API ⭐

> Самый важный уровень. Весь sklearn построен на этих принципах.

- [ ] Estimator API: `fit`, `predict`, `transform`, `fit_transform`
- [ ] Разница между Estimator, Transformer и Predictor
- [ ] `train_test_split` — базовое разбиение данных
- [ ] Формат входных данных: `X` (матрица признаков), `y` (целевой вектор)
- [ ] `random_state` — воспроизводимость результатов
- [ ] `get_params`, `set_params` — управление гиперпараметрами

---

## Уровень 2 — Предобработка данных

- [ ] Масштабирование: `StandardScaler`, `MinMaxScaler`, `RobustScaler`
- [ ] Кодирование категорий: `LabelEncoder`, `OrdinalEncoder`, `OneHotEncoder`
- [ ] Работа с пропусками: `SimpleImputer`, стратегии `mean`, `median`, `most_frequent`
- [ ] Полиномиальные признаки: `PolynomialFeatures`
- [ ] Биннинг: `KBinsDiscretizer`
- [ ] `FunctionTransformer` — обёртка для любой функции

---

## Уровень 3 — Пайплайны ⭐

> Ключевая концепция для корректного ML-кода.

- [ ] `Pipeline` — цепочка трансформеров + финальная модель
- [ ] Почему pipeline решает проблему data leakage
- [ ] `ColumnTransformer` — разные трансформации для разных колонок
- [ ] `make_pipeline`, `make_column_transformer` — короткий синтаксис
- [ ] Сохранение и загрузка пайплайна: `joblib.dump`, `joblib.load`

---

## Уровень 4 — Классификация

- [ ] `LogisticRegression`
- [ ] `KNeighborsClassifier`
- [ ] `DecisionTreeClassifier`
- [ ] `RandomForestClassifier` ⭐
- [ ] `GradientBoostingClassifier`
- [ ] `SVC` (Support Vector Machine)
- [ ] `predict_proba` — вероятности классов, не только метки

---

## Уровень 5 — Регрессия

- [ ] `LinearRegression`
- [ ] `Ridge`, `Lasso`, `ElasticNet` — регуляризация ⭐
- [ ] `DecisionTreeRegressor`, `RandomForestRegressor`
- [ ] `GradientBoostingRegressor`
- [ ] `SVR`
- [ ] Когда какой алгоритм выбирать

---

## Уровень 6 — Метрики и оценка

- [ ] Классификация: `accuracy_score`, `precision_score`, `recall_score`, `f1_score`
- [ ] `confusion_matrix`, `classification_report`
- [ ] `roc_auc_score`, `roc_curve` — ROC-анализ ⭐
- [ ] Регрессия: `mean_absolute_error`, `mean_squared_error`, `r2_score`
- [ ] Когда accuracy — плохая метрика (дисбаланс классов)
- [ ] `class_weight='balanced'` — борьба с дисбалансом

---

## Уровень 7 — Кросс-валидация и выбор модели

- [ ] `cross_val_score` — базовая кросс-валидация ⭐
- [ ] `KFold`, `StratifiedKFold` — стратегии разбиения
- [ ] `GridSearchCV` — перебор гиперпараметров ⭐
- [ ] `RandomizedSearchCV` — случайный поиск (быстрее Grid)
- [ ] `cross_validate` — несколько метрик одновременно
- [ ] Кривые обучения: `learning_curve`, `validation_curve`
- [ ] Bias-variance tradeoff — что видно на кривых

---

## Уровень 8 — Обучение без учителя

- [ ] Кластеризация: `KMeans`, `DBSCAN`, `AgglomerativeClustering`
- [ ] Метод локтя и силуэтный коэффициент для выбора числа кластеров
- [ ] Снижение размерности: `PCA` ⭐
- [ ] `TSNE`, `UMAP` (через отдельный пакет) — визуализация высоких пространств
- [ ] `TruncatedSVD` — PCA для разреженных матриц

---

## Уровень 9 — Продвинутые техники

- [ ] Feature importance: деревья, `permutation_importance`
- [ ] `SelectKBest`, `SelectFromModel` — отбор признаков
- [ ] `VotingClassifier`, `StackingClassifier` — ансамбли
- [ ] `BaggingClassifier`, `AdaBoostClassifier`
- [ ] `MultiOutputClassifier` — многозначная классификация
- [ ] Калибровка вероятностей: `CalibratedClassifierCV`
- [ ] `partial_fit` — инкрементальное обучение (большие данные)

---

## Контрольные точки

| Этап | Что умею |
|---|---|
| После уровня 2 | Предобрабатываю данные корректно |
| После уровня 3 | Строю пайплайны без data leakage |
| После уровня 6 | Обучаю и оцениваю любую модель |
| После уровня 7 | Подбираю гиперпараметры и честно оцениваю качество |
| После уровня 8 | Работаю с задачами без меток |
| После уровня 9 | Строю боевые ансамбли и отбираю признаки |

---

## Следующий шаг

После scikit-learn → **xgboost / lightgbm** (более мощный бустинг), затем **torch** (нейросети).
