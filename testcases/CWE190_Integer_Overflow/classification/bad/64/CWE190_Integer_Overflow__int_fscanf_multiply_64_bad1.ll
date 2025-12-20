@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_839c6 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1f857:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_839c6)
  %3 = bitcast ptr %stack_var_-20 to ptr
  call void @anon1(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1f8bc, label %dec_label_pc_1f8b7

dec_label_pc_1f8b7:                               ; preds = %dec_label_pc_1f857
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f8bc

dec_label_pc_1f8bc:                               ; preds = %dec_label_pc_1f8b7, %dec_label_pc_1f857
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_1f990:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %dec_label_pc_1f9c9, label %dec_label_pc_1f9b7

dec_label_pc_1f9b7:                               ; preds = %dec_label_pc_1f990
  %4 = mul i32 %2, 2
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_1f9c9

dec_label_pc_1f9c9:                               ; preds = %dec_label_pc_1f9b7, %dec_label_pc_1f990
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

