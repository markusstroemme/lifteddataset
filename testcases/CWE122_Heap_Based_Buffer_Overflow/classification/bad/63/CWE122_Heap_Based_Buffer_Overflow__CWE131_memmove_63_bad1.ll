@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_e10b:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 10)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_e14f, label %dec_label_pc_e145

dec_label_pc_e145:                                ; preds = %dec_label_pc_e10b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_e14f:                                ; preds = %dec_label_pc_e10b
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_e170, label %dec_label_pc_e16b

dec_label_pc_e16b:                                ; preds = %dec_label_pc_e14f
  call void @__stack_chk_fail()
  br label %dec_label_pc_e170

dec_label_pc_e170:                                ; preds = %dec_label_pc_e16b, %dec_label_pc_e14f
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_e1ee:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-56 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-56, align 8
  %3 = bitcast ptr %dataPtr to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-56, i32 40)
  %5 = trunc i64 %1 to i32
  call void @printIntLine(i32 %5)
  call void @free(ptr %3)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %2, %6
  br i1 %7, label %dec_label_pc_e286, label %dec_label_pc_e281

dec_label_pc_e281:                                ; preds = %dec_label_pc_e1ee
  call void @__stack_chk_fail()
  br label %dec_label_pc_e286

dec_label_pc_e286:                                ; preds = %dec_label_pc_e281, %dec_label_pc_e1ee
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

