define void @anon3() local_unnamed_addr {
dec_label_pc_c9be:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_c9f1, label %dec_label_pc_c9e7

dec_label_pc_c9e7:                                ; preds = %dec_label_pc_c9be
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c9f1:                                ; preds = %dec_label_pc_c9be
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  call void @anon0(ptr %3)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_ca3b:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_ca79:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_cb13:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %stack_var_-120 to ptr
  %3 = call ptr @strcpy(ptr %data, ptr nonnull %2)
  call void @printLine(ptr %data)
  %4 = bitcast ptr %data to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_cb8c, label %dec_label_pc_cb87

dec_label_pc_cb87:                                ; preds = %dec_label_pc_cb13
  call void @__stack_chk_fail()
  br label %dec_label_pc_cb8c

dec_label_pc_cb8c:                                ; preds = %dec_label_pc_cb87, %dec_label_pc_cb13
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

