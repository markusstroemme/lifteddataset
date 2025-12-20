define void @anon0() local_unnamed_addr {
dec_label_pc_15d4a:
  %stack_var_-16 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 200)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-16, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_15d7d, label %dec_label_pc_15d73

dec_label_pc_15d73:                               ; preds = %dec_label_pc_15d4a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_15d7d:                               ; preds = %dec_label_pc_15d4a
  %4 = call ptr @wmemset(ptr %1, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 196
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = load ptr, ptr %stack_var_-16, align 8
  %9 = bitcast ptr %8 to ptr
  call void @anon1(ptr %9)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_15eb4:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_15f11:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_15f6e:
  call void @anon4(ptr %data)
  ret void
}

define void @anon4(ptr %data) local_unnamed_addr {
dec_label_pc_15fcb:
  %0 = call i32 @strlen(ptr %data)
  %1 = add i32 %0, 1
  %2 = call ptr @calloc(i32 %1, i32 4)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_16015, label %dec_label_pc_1600b

dec_label_pc_1600b:                               ; preds = %dec_label_pc_15fcb
  call void @exit(i32 -1)
  unreachable

dec_label_pc_16015:                               ; preds = %dec_label_pc_15fcb
  %5 = bitcast ptr %2 to ptr
  %6 = bitcast ptr %data to ptr
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

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

