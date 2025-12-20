@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_75e4b:
  %0 = call ptr @malloc(i32 200)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_75e7a, label %dec_label_pc_75e70

dec_label_pc_75e70:                               ; preds = %dec_label_pc_75e4b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_75e7a:                               ; preds = %dec_label_pc_75e4b
  %3 = bitcast ptr %0 to ptr
  %4 = call ptr @wmemset(ptr %3, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 196
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = ptrtoint ptr %arg1 to i64
  %9 = bitcast ptr %arg1 to ptr
  store i64 %5, ptr %9, align 8
  ret i64 %8
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_75eae:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = bitcast ptr %stack_var_-40 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = load ptr, ptr %stack_var_-40, align 8
  %4 = bitcast ptr %3 to ptr
  %5 = call i32 @strlen(ptr %4)
  %6 = add i32 %5, 1
  %7 = call ptr @calloc(i32 %6, i32 4)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_75f17, label %dec_label_pc_75f0d

dec_label_pc_75f0d:                               ; preds = %dec_label_pc_75eae
  call void @exit(i32 -1)
  unreachable

dec_label_pc_75f17:                               ; preds = %dec_label_pc_75eae
  %10 = bitcast ptr %7 to ptr
  %11 = load ptr, ptr %stack_var_-40, align 8
  %12 = call ptr @wcscpy(ptr %10, ptr %11)
  %13 = bitcast ptr %7 to ptr
  call void @printLine(ptr %13)
  call void @free(ptr %7)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_75f57, label %dec_label_pc_75f52

dec_label_pc_75f52:                               ; preds = %dec_label_pc_75f17
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_75f57

dec_label_pc_75f57:                               ; preds = %dec_label_pc_75f52, %dec_label_pc_75f17
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

