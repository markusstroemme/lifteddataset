@global_var_83af6 = external constant [4 x i8]
@global_var_83b00 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1a557:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83af6, ptr nonnull %stack_var_-24)
  %3 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1a5bd, label %dec_label_pc_1a5b8

dec_label_pc_1a5b8:                               ; preds = %dec_label_pc_1a557
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a5bd

dec_label_pc_1a5bd:                               ; preds = %dec_label_pc_1a5b8, %dec_label_pc_1a557
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_1a65c:
  %0 = icmp eq ptr %dataVoidPtr, inttoptr (i64 9223372036854775807 to ptr)
  br i1 %0, label %dec_label_pc_1a6aa, label %dec_label_pc_1a68f

dec_label_pc_1a68f:                               ; preds = %dec_label_pc_1a65c
  %1 = ptrtoint ptr %dataVoidPtr to i64
  %2 = add i64 %1, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_1a6b9

dec_label_pc_1a6aa:                               ; preds = %dec_label_pc_1a65c
  call void @printLine(ptr @global_var_83b00)
  br label %dec_label_pc_1a6b9

dec_label_pc_1a6b9:                               ; preds = %dec_label_pc_1a6aa, %dec_label_pc_1a68f
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

