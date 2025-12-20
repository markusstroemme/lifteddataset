@global_var_84038 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8180 = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_22dae:
  %0 = load i32, ptr @global_var_b8180, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_22dda, label %dec_label_pc_22dc7

dec_label_pc_22dc7:                               ; preds = %dec_label_pc_22dae
  %2 = mul i32 %data, %data
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_22dda

dec_label_pc_22dda:                               ; preds = %dec_label_pc_22dc7, %dec_label_pc_22dae
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_22ddd:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_84038, ptr nonnull %stack_var_-20)
  store i32 1, ptr @global_var_b8180, align 4
  %3 = load i32, ptr %stack_var_-20, align 4
  call void @anon1(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_22e4a, label %dec_label_pc_22e45

dec_label_pc_22e45:                               ; preds = %dec_label_pc_22ddd
  call void @__stack_chk_fail()
  br label %dec_label_pc_22e4a

dec_label_pc_22e4a:                               ; preds = %dec_label_pc_22e45, %dec_label_pc_22ddd
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

