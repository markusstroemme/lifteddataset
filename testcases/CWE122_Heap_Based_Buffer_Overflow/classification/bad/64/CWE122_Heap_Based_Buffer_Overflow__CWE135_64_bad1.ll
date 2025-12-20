define void @anon0() local_unnamed_addr {
dec_label_pc_16776:
  %stack_var_-24 = alloca ptr, align 8
  %stack_var_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-32, align 8
  %1 = call ptr @malloc(i32 200)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_167b8, label %dec_label_pc_167ae

dec_label_pc_167ae:                               ; preds = %dec_label_pc_16776
  call void @exit(i32 -1)
  unreachable

dec_label_pc_167b8:                               ; preds = %dec_label_pc_16776
  %5 = call ptr @wmemset(ptr %2, i32 65, i32 49)
  %6 = ptrtoint ptr %1 to i64
  %7 = add i64 %6, 196
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = load ptr, ptr %stack_var_-24, align 8
  %10 = ptrtoint ptr %9 to i64
  %11 = bitcast ptr %stack_var_-32 to ptr
  store i64 %10, ptr %11, align 8
  %12 = bitcast ptr %stack_var_-32 to ptr
  call void @anon1(ptr nonnull %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_16807, label %dec_label_pc_16802

dec_label_pc_16802:                               ; preds = %dec_label_pc_167b8
  call void @__stack_chk_fail()
  br label %dec_label_pc_16807

dec_label_pc_16807:                               ; preds = %dec_label_pc_16802, %dec_label_pc_167b8
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_16949:
  %0 = call i32 @strlen(ptr %dataVoidPtr)
  %1 = add i32 %0, 1
  %2 = call ptr @calloc(i32 %1, i32 4)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_169a6, label %dec_label_pc_1699c

dec_label_pc_1699c:                               ; preds = %dec_label_pc_16949
  call void @exit(i32 -1)
  unreachable

dec_label_pc_169a6:                               ; preds = %dec_label_pc_16949
  %5 = bitcast ptr %2 to ptr
  %6 = bitcast ptr %dataVoidPtr to ptr
  %7 = call ptr @wcscpy(ptr %5, ptr %6)
  %8 = bitcast ptr %2 to ptr
  call void @printLine(ptr %8)
  call void @free(ptr %2)
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

declare ptr @calloc(i32, i32) local_unnamed_addr

declare ptr @wmemset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

