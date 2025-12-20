@global_var_724e0 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_3a314:
  %myUnion_-48 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %myUnion_-48, align 4
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_724e0, ptr nonnull %myUnion_-48)
  %3 = load i32, ptr %myUnion_-48, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %dec_label_pc_3a387, label %dec_label_pc_3a370

dec_label_pc_3a370:                               ; preds = %dec_label_pc_3a314
  %5 = sext i32 %3 to i64
  %6 = mul i64 %5, 2
  call void @printLongLongLine(i64 %6)
  br label %dec_label_pc_3a387

dec_label_pc_3a387:                               ; preds = %dec_label_pc_3a370, %dec_label_pc_3a314
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_3a39c, label %dec_label_pc_3a397

dec_label_pc_3a397:                               ; preds = %dec_label_pc_3a387
  call void @__stack_chk_fail()
  br label %dec_label_pc_3a39c

dec_label_pc_3a39c:                               ; preds = %dec_label_pc_3a397, %dec_label_pc_3a387
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

