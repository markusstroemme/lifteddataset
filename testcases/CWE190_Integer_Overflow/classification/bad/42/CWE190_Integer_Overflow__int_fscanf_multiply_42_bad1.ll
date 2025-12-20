@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_83790 = external constant [3 x i8]

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1e755:
  %0 = load ptr, ptr @global_var_b8080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_83790)
  ret i32 %data
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1e78b:
  %0 = call i32 @anon1(i32 0)
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_1e7c3, label %dec_label_pc_1e7b1

dec_label_pc_1e7b1:                               ; preds = %dec_label_pc_1e78b
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_1e7c3

dec_label_pc_1e7c3:                               ; preds = %dec_label_pc_1e7b1, %dec_label_pc_1e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

