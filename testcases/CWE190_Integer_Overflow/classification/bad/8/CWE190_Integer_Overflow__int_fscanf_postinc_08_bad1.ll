@global_var_86ab8 = external constant [3 x i8]
@global_var_8ca7c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.987() local_unnamed_addr {
dec_label_pc_36839:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_36857:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = call i32 @staticReturnsTrue.987()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_368a9, label %dec_label_pc_36887

dec_label_pc_36887:                               ; preds = %dec_label_pc_36857
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_86ab8, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_368a9

dec_label_pc_368a9:                               ; preds = %dec_label_pc_36887, %dec_label_pc_36857
  %5 = call i32 @staticReturnsTrue.987()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_368d0, label %dec_label_pc_368b7

dec_label_pc_368b7:                               ; preds = %dec_label_pc_368a9
  %7 = load i64, ptr %stack_var_-24, align 8
  %8 = mul i64 %7, 4294967296
  %sext = add i64 %8, 4294967296
  %9 = ashr exact i64 %sext, 32
  store i64 %9, ptr %stack_var_-24, align 8
  %10 = trunc i64 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_368d0

dec_label_pc_368d0:                               ; preds = %dec_label_pc_368b7, %dec_label_pc_368a9
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_368e5, label %dec_label_pc_368e0

dec_label_pc_368e0:                               ; preds = %dec_label_pc_368d0
  call void @__stack_chk_fail()
  br label %dec_label_pc_368e5

dec_label_pc_368e5:                               ; preds = %dec_label_pc_368e0, %dec_label_pc_368d0
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

