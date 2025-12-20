@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_75b3e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 200)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-48, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_75b88, label %dec_label_pc_75b7e

dec_label_pc_75b7e:                               ; preds = %dec_label_pc_75b3e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_75b88:                               ; preds = %dec_label_pc_75b3e
  %5 = call ptr @wmemset(ptr %2, i32 65, i32 49)
  %6 = ptrtoint ptr %1 to i64
  %7 = add i64 %6, 196
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %stack_var_-48, align 8
  %10 = bitcast ptr %9 to ptr
  %11 = call i32 @strlen(ptr %10)
  %12 = add i32 %11, 1
  %13 = call ptr @calloc(i32 %12, i32 4)
  %14 = icmp eq ptr %13, null
  %15 = icmp eq i1 %14, false
  br i1 %15, label %dec_label_pc_75bfb, label %dec_label_pc_75bf1

dec_label_pc_75bf1:                               ; preds = %dec_label_pc_75b88
  call void @exit(i32 -1)
  unreachable

dec_label_pc_75bfb:                               ; preds = %dec_label_pc_75b88
  %16 = bitcast ptr %13 to ptr
  %17 = call ptr @wcscpy(ptr %16, ptr %9)
  %18 = bitcast ptr %13 to ptr
  call void @printLine(ptr %18)
  call void @free(ptr %13)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_75c3b, label %dec_label_pc_75c36

dec_label_pc_75c36:                               ; preds = %dec_label_pc_75bfb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_75c3b

dec_label_pc_75c3b:                               ; preds = %dec_label_pc_75c36, %dec_label_pc_75bfb
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @calloc(i32, i32) local_unnamed_addr

declare ptr @wmemset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

