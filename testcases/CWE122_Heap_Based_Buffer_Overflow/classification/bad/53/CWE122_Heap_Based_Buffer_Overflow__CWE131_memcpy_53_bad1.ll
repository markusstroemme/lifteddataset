@global_var_44d70 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_fa1e:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_fa51, label %dec_label_pc_fa47

dec_label_pc_fa47:                                ; preds = %dec_label_pc_fa1e
  call void @exit(i32 -1)
  unreachable

dec_label_pc_fa51:                                ; preds = %dec_label_pc_fa1e
  %3 = bitcast ptr %0 to ptr
  call void @anon1(ptr %3)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_fab7:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_faf5:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_fb33:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-56 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-56, align 8
  %3 = bitcast ptr %data to ptr
  %4 = call ptr @memcpy(ptr %3, ptr nonnull %stack_var_-56, i32 40)
  %5 = trunc i64 %1 to i32
  call void @printIntLine(i32 %5)
  call void @free(ptr %3)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %2, %6
  br i1 %7, label %dec_label_pc_fbc0, label %dec_label_pc_fbbb

dec_label_pc_fbbb:                                ; preds = %dec_label_pc_fb33
  call void @__stack_chk_fail()
  br label %dec_label_pc_fbc0

dec_label_pc_fbc0:                                ; preds = %dec_label_pc_fbbb, %dec_label_pc_fb33
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

