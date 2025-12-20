@global_var_48754 = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_15c4d:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_15c91, label %dec_label_pc_15c8c

dec_label_pc_15c8c:                               ; preds = %dec_label_pc_15c4d
  call void @__stack_chk_fail()
  br label %dec_label_pc_15c91

dec_label_pc_15c91:                               ; preds = %dec_label_pc_15c8c, %dec_label_pc_15c4d
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_15d1c:
  %0 = icmp eq ptr %dataVoidPtr, null
  br i1 %0, label %dec_label_pc_15d57, label %dec_label_pc_15d46

dec_label_pc_15d46:                               ; preds = %dec_label_pc_15d1c
  %1 = ptrtoint ptr %dataVoidPtr to i64
  call void @printLongLine(i64 %1)
  br label %dec_label_pc_15d66

dec_label_pc_15d57:                               ; preds = %dec_label_pc_15d1c
  call void @printLine(ptr @global_var_48754)
  br label %dec_label_pc_15d66

dec_label_pc_15d66:                               ; preds = %dec_label_pc_15d57, %dec_label_pc_15d46
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

