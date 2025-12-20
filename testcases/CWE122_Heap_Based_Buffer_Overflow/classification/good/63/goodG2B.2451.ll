define void @anon1() local_unnamed_addr {
dec_label_pc_164ad:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = call ptr @malloc(i32 50)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_164ef, label %dec_label_pc_164e5

dec_label_pc_164e5:                               ; preds = %dec_label_pc_164ad
  call void @exit(i32 -1)
  unreachable

dec_label_pc_164ef:                               ; preds = %dec_label_pc_164ad
  %4 = ptrtoint ptr %1 to i64
  %5 = call ptr @memset(ptr %1, i32 65, i32 49)
  %6 = add i64 %4, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  store i64 %4, ptr %stack_var_-32, align 8
  %8 = bitcast ptr %stack_var_-32 to ptr
  call void @anon0(ptr nonnull %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_16539, label %dec_label_pc_16534

dec_label_pc_16534:                               ; preds = %dec_label_pc_164ef
  call void @__stack_chk_fail()
  br label %dec_label_pc_16539

dec_label_pc_16539:                               ; preds = %dec_label_pc_16534, %dec_label_pc_164ef
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_16670:
  %0 = bitcast ptr %dataPtr to ptr
  %1 = call i32 @strlen(ptr %0)
  %2 = add i32 %1, 1
  %3 = call ptr @calloc(i32 %2, i32 1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_166c5, label %dec_label_pc_166bb

dec_label_pc_166bb:                               ; preds = %dec_label_pc_16670
  call void @exit(i32 -1)
  unreachable

dec_label_pc_166c5:                               ; preds = %dec_label_pc_16670
  %6 = bitcast ptr %3 to ptr
  %7 = call ptr @strcpy(ptr %6, ptr %0)
  call void @printLine(ptr %6)
  call void @free(ptr %3)
  ret void
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

