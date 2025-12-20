define void @anon1() local_unnamed_addr {
dec_label_pc_b063:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 11)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_b0a7, label %dec_label_pc_b09d

dec_label_pc_b09d:                                ; preds = %dec_label_pc_b063
  call void @exit(i32 -1)
  unreachable

dec_label_pc_b0a7:                                ; preds = %dec_label_pc_b063
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_b0c8, label %dec_label_pc_b0c3

dec_label_pc_b0c3:                                ; preds = %dec_label_pc_b0a7
  call void @__stack_chk_fail()
  br label %dec_label_pc_b0c8

dec_label_pc_b0c8:                                ; preds = %dec_label_pc_b0c3, %dec_label_pc_b0a7
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_b17b:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = bitcast ptr %dataVoidPtr to ptr
  %5 = call ptr @memmove(ptr %4, ptr nonnull %stack_var_-27, i32 %3)
  call void @printLine(ptr %dataVoidPtr)
  call void @free(ptr %4)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_b215, label %dec_label_pc_b210

dec_label_pc_b210:                                ; preds = %dec_label_pc_b17b
  call void @__stack_chk_fail()
  br label %dec_label_pc_b215

dec_label_pc_b215:                                ; preds = %dec_label_pc_b210, %dec_label_pc_b17b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

