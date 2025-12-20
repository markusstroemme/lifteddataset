@global_var_72f68 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_258bd:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2590e, label %dec_label_pc_258ec

dec_label_pc_258ec:                               ; preds = %dec_label_pc_258bd
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72f68, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_2590e

dec_label_pc_2590e:                               ; preds = %dec_label_pc_258ec, %dec_label_pc_258bd
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_25938, label %dec_label_pc_2591c

dec_label_pc_2591c:                               ; preds = %dec_label_pc_2590e
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = mul i16 %7, %7
  %9 = sext i16 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_25938

dec_label_pc_25938:                               ; preds = %dec_label_pc_2591c, %dec_label_pc_2590e
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_2594d, label %dec_label_pc_25948

dec_label_pc_25948:                               ; preds = %dec_label_pc_25938
  call void @__stack_chk_fail()
  br label %dec_label_pc_2594d

dec_label_pc_2594d:                               ; preds = %dec_label_pc_25948, %dec_label_pc_25938
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_5e30b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

