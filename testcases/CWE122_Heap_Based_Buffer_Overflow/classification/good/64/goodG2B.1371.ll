@global_var_bd318 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_e389:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 40)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_e3cd, label %dec_label_pc_e3c3

dec_label_pc_e3c3:                                ; preds = %dec_label_pc_e389
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e3cd:                                ; preds = %dec_label_pc_e389
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_e3ee, label %dec_label_pc_e3e9

dec_label_pc_e3e9:                                ; preds = %dec_label_pc_e3cd
  call void @__stack_chk_fail()
  br label %dec_label_pc_e3ee

dec_label_pc_e3ee:                                ; preds = %dec_label_pc_e3e9, %dec_label_pc_e3cd
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_e4a7:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-56 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-56, align 8
  %3 = bitcast ptr %dataVoidPtr to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-56, i32 40)
  %5 = trunc i64 %1 to i32
  call void @printIntLine(i32 %5)
  call void @free(ptr %3)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %2, %6
  br i1 %7, label %dec_label_pc_e547, label %dec_label_pc_e542

dec_label_pc_e542:                                ; preds = %dec_label_pc_e4a7
  call void @__stack_chk_fail()
  br label %dec_label_pc_e547

dec_label_pc_e547:                                ; preds = %dec_label_pc_e542, %dec_label_pc_e4a7
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

