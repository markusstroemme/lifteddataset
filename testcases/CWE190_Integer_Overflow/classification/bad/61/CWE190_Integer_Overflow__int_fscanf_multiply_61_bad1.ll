@global_var_83986 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1f4fb:
  %0 = call i32 @anon1(i32 0)
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_1f533, label %dec_label_pc_1f521

dec_label_pc_1f521:                               ; preds = %dec_label_pc_1f4fb
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_1f533

dec_label_pc_1f533:                               ; preds = %dec_label_pc_1f521, %dec_label_pc_1f4fb
  ret void
}

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1f5e5:
  %stack_var_-12 = alloca i32, align 4
  store i32 %data, ptr %stack_var_-12, align 4
  %0 = load ptr, ptr @global_var_b8080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_83986, ptr nonnull %stack_var_-12)
  %2 = load i32, ptr %stack_var_-12, align 4
  ret i32 %2
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

