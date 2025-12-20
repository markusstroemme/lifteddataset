@global_var_71a00 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_349f3:
  %dataPtr2_-56 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %dataPtr2_-56 to ptr
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @global_var_a5080, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_71a00, ptr nonnull %dataPtr2_-56)
  %4 = load ptr, ptr %dataPtr2_-56, align 8
  %5 = ptrtoint ptr %4 to i64
  %6 = add i64 %5, 1
  call void @printLongLongLine(i64 %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_34a96, label %dec_label_pc_34a91

dec_label_pc_34a91:                               ; preds = %dec_label_pc_349f3
  call void @__stack_chk_fail()
  br label %dec_label_pc_34a96

dec_label_pc_34a96:                               ; preds = %dec_label_pc_34a91, %dec_label_pc_349f3
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

