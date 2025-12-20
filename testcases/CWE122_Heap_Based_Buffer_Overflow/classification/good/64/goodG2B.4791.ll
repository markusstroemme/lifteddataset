define void @anon1() local_unnamed_addr {
dec_label_pc_2bcde:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = bitcast ptr %1 to ptr
  store ptr %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_2bd22, label %dec_label_pc_2bd18

dec_label_pc_2bd18:                               ; preds = %dec_label_pc_2bcde
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2bd22:                               ; preds = %dec_label_pc_2bcde
  store i8 0, ptr %2, align 1
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2bd4a, label %dec_label_pc_2bd45

dec_label_pc_2bd45:                               ; preds = %dec_label_pc_2bd22
  call void @__stack_chk_fail()
  br label %dec_label_pc_2bd4a

dec_label_pc_2bd4a:                               ; preds = %dec_label_pc_2bd45, %dec_label_pc_2bd22
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_2be08:
  %0 = ptrtoint ptr %dataVoidPtr to i64
  %stack_var_-120 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strncpy(ptr %dataVoidPtr, ptr nonnull %3, i32 99)
  %5 = add i64 %0, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  call void @printLine(ptr %dataVoidPtr)
  %7 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %1, %8
  br i1 %9, label %dec_label_pc_2bead, label %dec_label_pc_2bea8

dec_label_pc_2bea8:                               ; preds = %dec_label_pc_2be08
  call void @__stack_chk_fail()
  br label %dec_label_pc_2bead

dec_label_pc_2bead:                               ; preds = %dec_label_pc_2bea8, %dec_label_pc_2be08
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

