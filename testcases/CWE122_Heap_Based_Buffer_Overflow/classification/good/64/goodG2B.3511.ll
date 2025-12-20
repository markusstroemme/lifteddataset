define void @anon1() local_unnamed_addr {
dec_label_pc_21fb3:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_21ff7, label %dec_label_pc_21fed

dec_label_pc_21fed:                               ; preds = %dec_label_pc_21fb3
  call void @exit(i32 -1)
  unreachable

dec_label_pc_21ff7:                               ; preds = %dec_label_pc_21fb3
  store i8 0, ptr %2, align 1
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2201f, label %dec_label_pc_2201a

dec_label_pc_2201a:                               ; preds = %dec_label_pc_21ff7
  call void @__stack_chk_fail()
  br label %dec_label_pc_2201f

dec_label_pc_2201f:                               ; preds = %dec_label_pc_2201a, %dec_label_pc_21ff7
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_220dd:
  %0 = ptrtoint ptr %dataVoidPtr to i64
  %stack_var_-120 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %dataVoidPtr to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-120, i32 100)
  %5 = add i64 %0, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  call void @printLine(ptr %dataVoidPtr)
  call void @free(ptr %3)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_22182, label %dec_label_pc_2217d

dec_label_pc_2217d:                               ; preds = %dec_label_pc_220dd
  call void @__stack_chk_fail()
  br label %dec_label_pc_22182

dec_label_pc_22182:                               ; preds = %dec_label_pc_2217d, %dec_label_pc_220dd
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

