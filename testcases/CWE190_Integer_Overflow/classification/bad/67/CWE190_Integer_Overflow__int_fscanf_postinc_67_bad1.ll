@global_var_8ca7c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_87276 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3a3d2:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_87276)
  call void @anon1(i64 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_3a43b, label %dec_label_pc_3a436

dec_label_pc_3a436:                               ; preds = %dec_label_pc_3a3d2
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a43b

dec_label_pc_3a43b:                               ; preds = %dec_label_pc_3a436, %dec_label_pc_3a3d2
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_3a4f4:
  %0 = trunc i64 %myStruct to i32
  %1 = add i32 %0, 1
  call void @printIntLine(i32 %1)
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

