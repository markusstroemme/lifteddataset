@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_75f59:
  %0 = call ptr @malloc(i32 50)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_75f88, label %dec_label_pc_75f7e

dec_label_pc_75f7e:                               ; preds = %dec_label_pc_75f59
  call void @exit(i32 -1)
  unreachable

dec_label_pc_75f88:                               ; preds = %dec_label_pc_75f59
  %3 = ptrtoint ptr %0 to i64
  %4 = call ptr @memset(ptr %0, i32 65, i32 49)
  %5 = add i64 %3, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = ptrtoint ptr %arg1 to i64
  %8 = bitcast ptr %arg1 to ptr
  store i64 %3, ptr %8, align 8
  ret i64 %7
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_75fb7:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = bitcast ptr %stack_var_-40 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = load ptr, ptr %stack_var_-40, align 8
  %4 = call i32 @strlen(ptr %3)
  %5 = add i32 %4, 1
  %6 = call ptr @calloc(i32 %5, i32 1)
  %7 = icmp eq ptr %6, null
  %8 = icmp eq i1 %7, false
  br i1 %8, label %dec_label_pc_76020, label %dec_label_pc_76016

dec_label_pc_76016:                               ; preds = %dec_label_pc_75fb7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_76020:                               ; preds = %dec_label_pc_75fb7
  %9 = bitcast ptr %6 to ptr
  %10 = load ptr, ptr %stack_var_-40, align 8
  %11 = call ptr @strcpy(ptr %9, ptr %10)
  call void @printLine(ptr %9)
  call void @free(ptr %6)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_76060, label %dec_label_pc_7605b

dec_label_pc_7605b:                               ; preds = %dec_label_pc_76020
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_76060

dec_label_pc_76060:                               ; preds = %dec_label_pc_7605b, %dec_label_pc_76020
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @calloc(i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

