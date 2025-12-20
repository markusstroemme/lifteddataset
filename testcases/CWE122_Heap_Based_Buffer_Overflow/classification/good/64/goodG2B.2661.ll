define void @anon1() local_unnamed_addr {
dec_label_pc_1857d:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_185b9, label %dec_label_pc_185af

dec_label_pc_185af:                               ; preds = %dec_label_pc_1857d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_185b9:                               ; preds = %dec_label_pc_1857d
  %5 = call ptr @memset(ptr %1, i32 65, i32 49)
  %6 = add i64 %2, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_185fb, label %dec_label_pc_185f6

dec_label_pc_185f6:                               ; preds = %dec_label_pc_185b9
  call void @__stack_chk_fail()
  br label %dec_label_pc_185fb

dec_label_pc_185fb:                               ; preds = %dec_label_pc_185f6, %dec_label_pc_185b9
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_186bc:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %stack_var_-72 to ptr
  %2 = call ptr @strcpy(ptr nonnull %1, ptr %dataVoidPtr)
  call void @printLine(ptr %dataVoidPtr)
  %3 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_18764, label %dec_label_pc_1875f

dec_label_pc_1875f:                               ; preds = %dec_label_pc_186bc
  call void @__stack_chk_fail()
  br label %dec_label_pc_18764

dec_label_pc_18764:                               ; preds = %dec_label_pc_1875f, %dec_label_pc_186bc
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

