define void @anon1() local_unnamed_addr {
dec_label_pc_cffe:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_d042, label %dec_label_pc_d038

dec_label_pc_d038:                                ; preds = %dec_label_pc_cffe
  call void @exit(i32 -1)
  unreachable

dec_label_pc_d042:                                ; preds = %dec_label_pc_cffe
  store i8 0, ptr %2, align 1
  call void @anon0(ptr nonnull %stack_var_-24)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_d06a, label %dec_label_pc_d065

dec_label_pc_d065:                                ; preds = %dec_label_pc_d042
  call void @__stack_chk_fail()
  br label %dec_label_pc_d06a

dec_label_pc_d06a:                                ; preds = %dec_label_pc_d065, %dec_label_pc_d042
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_d110:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %dataPtr to ptr
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strcpy(ptr %2, ptr nonnull %3)
  call void @printLine(ptr %2)
  %5 = bitcast ptr %dataPtr to ptr
  call void @free(ptr %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_d19d, label %dec_label_pc_d198

dec_label_pc_d198:                                ; preds = %dec_label_pc_d110
  call void @__stack_chk_fail()
  br label %dec_label_pc_d19d

dec_label_pc_d19d:                                ; preds = %dec_label_pc_d198, %dec_label_pc_d110
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

