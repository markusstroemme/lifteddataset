define void @anon2() local_unnamed_addr {
dec_label_pc_63ccc:
  %0 = call ptr @malloc(i32 11)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_63cff, label %dec_label_pc_63cf5

dec_label_pc_63cf5:                               ; preds = %dec_label_pc_63ccc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_63cff:                               ; preds = %dec_label_pc_63ccc
  %3 = bitcast ptr %0 to ptr
  call void @anon0(ptr %3)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_63d42:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_63dda:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call ptr @strcpy(ptr %data, ptr nonnull %1)
  call void @printLine(ptr %data)
  %3 = bitcast ptr %data to ptr
  call void @free(ptr %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_63e51, label %dec_label_pc_63e4c

dec_label_pc_63e4c:                               ; preds = %dec_label_pc_63dda
  call void @__stack_chk_fail()
  br label %dec_label_pc_63e51

dec_label_pc_63e51:                               ; preds = %dec_label_pc_63e4c, %dec_label_pc_63dda
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

