@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_32846:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3288a, label %dec_label_pc_32880

dec_label_pc_32880:                               ; preds = %dec_label_pc_32846
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3288a:                               ; preds = %dec_label_pc_32846
  %4 = ptrtoint ptr %1 to i64
  %5 = call ptr @memset(ptr %1, i32 65, i32 99)
  %6 = add i64 %4, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  store i64 0, ptr %stack_var_-72, align 8
  %8 = bitcast ptr %1 to ptr
  %9 = call i32 @strlen(ptr %8)
  %10 = call ptr @memcpy(ptr nonnull %stack_var_-72, ptr %1, i32 %9)
  call void @printLine(ptr %8)
  call void @free(ptr %1)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_3293f, label %dec_label_pc_3293a

dec_label_pc_3293a:                               ; preds = %dec_label_pc_3288a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3293f

dec_label_pc_3293f:                               ; preds = %dec_label_pc_3293a, %dec_label_pc_3288a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

