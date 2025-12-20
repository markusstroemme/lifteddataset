@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_83a86 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1fe2e:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83a86)
  call void @anon1(i64 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1fe97, label %dec_label_pc_1fe92

dec_label_pc_1fe92:                               ; preds = %dec_label_pc_1fe2e
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fe97

dec_label_pc_1fe97:                               ; preds = %dec_label_pc_1fe92, %dec_label_pc_1fe2e
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_1ff50:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_1ff7d, label %dec_label_pc_1ff6b

dec_label_pc_1ff6b:                               ; preds = %dec_label_pc_1ff50
  %2 = mul i32 %0, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_1ff7d

dec_label_pc_1ff7d:                               ; preds = %dec_label_pc_1ff6b, %dec_label_pc_1ff50
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

