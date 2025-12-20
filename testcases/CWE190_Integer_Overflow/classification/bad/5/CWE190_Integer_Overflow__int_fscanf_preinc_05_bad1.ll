@global_var_86760 = external constant [3 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc050 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_36028:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load i32, ptr @global_var_bc050, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_36099, label %dec_label_pc_36076

dec_label_pc_36076:                               ; preds = %dec_label_pc_36028
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_86760, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_bc050, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_36099, label %dec_label_pc_36080

dec_label_pc_36080:                               ; preds = %dec_label_pc_36076
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = mul i64 %6, 4294967296
  %sext = add i64 %7, 4294967296
  %8 = ashr exact i64 %sext, 32
  store i64 %8, ptr %stack_var_-24, align 8
  %9 = trunc i64 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_36099

dec_label_pc_36099:                               ; preds = %dec_label_pc_36028, %dec_label_pc_36080, %dec_label_pc_36076
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_360ae, label %dec_label_pc_360a9

dec_label_pc_360a9:                               ; preds = %dec_label_pc_36099
  call void @__stack_chk_fail()
  br label %dec_label_pc_360ae

dec_label_pc_360ae:                               ; preds = %dec_label_pc_360a9, %dec_label_pc_36099
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

