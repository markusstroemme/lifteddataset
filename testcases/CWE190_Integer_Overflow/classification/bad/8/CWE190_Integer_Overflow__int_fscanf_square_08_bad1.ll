@global_var_83d18 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.595() local_unnamed_addr {
dec_label_pc_212e7:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_21305:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = call i32 @staticReturnsTrue.595()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_21357, label %dec_label_pc_21335

dec_label_pc_21335:                               ; preds = %dec_label_pc_21305
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_83d18, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_21357

dec_label_pc_21357:                               ; preds = %dec_label_pc_21335, %dec_label_pc_21305
  %5 = call i32 @staticReturnsTrue.595()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_2137b, label %dec_label_pc_21365

dec_label_pc_21365:                               ; preds = %dec_label_pc_21357
  %7 = load i64, ptr %stack_var_-24, align 8
  %sext = mul i64 %7, 4294967296
  %8 = ashr exact i64 %sext, 32
  %9 = mul nsw i64 %8, %8
  %10 = trunc i64 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_2137b

dec_label_pc_2137b:                               ; preds = %dec_label_pc_21365, %dec_label_pc_21357
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_21390, label %dec_label_pc_2138b

dec_label_pc_2138b:                               ; preds = %dec_label_pc_2137b
  call void @__stack_chk_fail()
  br label %dec_label_pc_21390

dec_label_pc_21390:                               ; preds = %dec_label_pc_2138b, %dec_label_pc_2137b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

