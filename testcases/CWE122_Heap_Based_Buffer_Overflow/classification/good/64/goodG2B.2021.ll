define void @anon1() local_unnamed_addr {
dec_label_pc_12b03:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_12b3f, label %dec_label_pc_12b35

dec_label_pc_12b35:                               ; preds = %dec_label_pc_12b03
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12b3f:                               ; preds = %dec_label_pc_12b03
  %5 = call ptr @memset(ptr %1, i32 65, i32 49)
  %6 = add i64 %2, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_12b81, label %dec_label_pc_12b7c

dec_label_pc_12b7c:                               ; preds = %dec_label_pc_12b3f
  call void @__stack_chk_fail()
  br label %dec_label_pc_12b81

dec_label_pc_12b81:                               ; preds = %dec_label_pc_12b7c, %dec_label_pc_12b3f
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_12c42:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %stack_var_-72 to ptr
  %2 = call ptr @strcat(ptr nonnull %1, ptr %dataVoidPtr)
  call void @printLine(ptr %dataVoidPtr)
  %3 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_12cea, label %dec_label_pc_12ce5

dec_label_pc_12ce5:                               ; preds = %dec_label_pc_12c42
  call void @__stack_chk_fail()
  br label %dec_label_pc_12cea

dec_label_pc_12cea:                               ; preds = %dec_label_pc_12ce5, %dec_label_pc_12c42
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_24c88:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_24cab, label %dec_label_pc_24c9f

dec_label_pc_24c9f:                               ; preds = %dec_label_pc_24c88
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_24cab

dec_label_pc_24cab:                               ; preds = %dec_label_pc_24c9f, %dec_label_pc_24c88
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

