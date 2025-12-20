@global_var_83800 = external constant [4 x i8]
@global_var_83808 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_18e57:
  %dataPtr2_-56 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %dataPtr2_-56 to ptr
  store i64 0, ptr %1, align 8
  %2 = load ptr, ptr @global_var_bc0b0, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_83800, ptr nonnull %dataPtr2_-56)
  %4 = load ptr, ptr %dataPtr2_-56, align 8
  %5 = icmp eq ptr %4, inttoptr (i64 9223372036854775807 to ptr)
  br i1 %5, label %dec_label_pc_18ef8, label %dec_label_pc_18edd

dec_label_pc_18edd:                               ; preds = %dec_label_pc_18e57
  %6 = ptrtoint ptr %4 to i64
  %7 = add i64 %6, 1
  call void @printLongLongLine(i64 %7)
  br label %dec_label_pc_18f07

dec_label_pc_18ef8:                               ; preds = %dec_label_pc_18e57
  call void @printLine(ptr @global_var_83808)
  br label %dec_label_pc_18f07

dec_label_pc_18f07:                               ; preds = %dec_label_pc_18ef8, %dec_label_pc_18edd
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_18f1c, label %dec_label_pc_18f17

dec_label_pc_18f17:                               ; preds = %dec_label_pc_18f07
  call void @__stack_chk_fail()
  br label %dec_label_pc_18f1c

dec_label_pc_18f1c:                               ; preds = %dec_label_pc_18f17, %dec_label_pc_18f07
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

