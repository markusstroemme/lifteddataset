@global_var_724a0 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_3a0ed:
  %dataPtr2_-56 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %dataPtr2_-56 to ptr
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @global_var_a5080, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_724a0, ptr nonnull %dataPtr2_-56)
  %4 = load ptr, ptr %dataPtr2_-56, align 8
  %5 = icmp slt ptr %4, inttoptr (i64 1 to ptr)
  br i1 %5, label %dec_label_pc_3a181, label %dec_label_pc_3a16a

dec_label_pc_3a16a:                               ; preds = %dec_label_pc_3a0ed
  %6 = ptrtoint ptr %4 to i64
  %7 = mul i64 %6, 2
  call void @printLongLongLine(i64 %7)
  br label %dec_label_pc_3a181

dec_label_pc_3a181:                               ; preds = %dec_label_pc_3a16a, %dec_label_pc_3a0ed
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_3a196, label %dec_label_pc_3a191

dec_label_pc_3a191:                               ; preds = %dec_label_pc_3a181
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a196

dec_label_pc_3a196:                               ; preds = %dec_label_pc_3a191, %dec_label_pc_3a181
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

