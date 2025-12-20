@global_var_83c20 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8030 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_20a79:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load i32, ptr @global_var_b8030, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_20ae7, label %dec_label_pc_20ac7

dec_label_pc_20ac7:                               ; preds = %dec_label_pc_20a79
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_83c20, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_b8030, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_20ae7, label %dec_label_pc_20ad1

dec_label_pc_20ad1:                               ; preds = %dec_label_pc_20ac7
  %6 = load i64, ptr %stack_var_-24, align 8
  %sext = mul i64 %6, 4294967296
  %7 = ashr exact i64 %sext, 32
  %8 = mul nsw i64 %7, %7
  %9 = trunc i64 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_20ae7

dec_label_pc_20ae7:                               ; preds = %dec_label_pc_20a79, %dec_label_pc_20ad1, %dec_label_pc_20ac7
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_20afc, label %dec_label_pc_20af7

dec_label_pc_20af7:                               ; preds = %dec_label_pc_20ae7
  call void @__stack_chk_fail()
  br label %dec_label_pc_20afc

dec_label_pc_20afc:                               ; preds = %dec_label_pc_20af7, %dec_label_pc_20ae7
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

