define void @anon3() local_unnamed_addr {
dec_label_pc_15a2e:
  %stack_var_-16 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 50)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-16, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_15a61, label %dec_label_pc_15a57

dec_label_pc_15a57:                               ; preds = %dec_label_pc_15a2e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15a61:                               ; preds = %dec_label_pc_15a2e
  %4 = call ptr @memset(ptr %0, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = load ptr, ptr %stack_var_-16, align 8
  call void @anon0(ptr %8)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_15b47:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_15ba4:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_15c5a:
  %0 = call i32 @strlen(ptr %data)
  %1 = add i32 %0, 1
  %2 = call ptr @calloc(i32 %1, i32 1)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_15ca4, label %dec_label_pc_15c9a

dec_label_pc_15c9a:                               ; preds = %dec_label_pc_15c5a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15ca4:                               ; preds = %dec_label_pc_15c5a
  %5 = bitcast ptr %2 to ptr
  %6 = call ptr @strcpy(ptr %5, ptr %data)
  call void @printLine(ptr %5)
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @calloc(i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

