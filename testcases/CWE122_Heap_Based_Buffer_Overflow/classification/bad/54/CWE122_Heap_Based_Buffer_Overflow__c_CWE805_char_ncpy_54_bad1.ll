define void @anon0() local_unnamed_addr {
dec_label_pc_2b5ff:
  %0 = call ptr @malloc(i32 50)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_2b632, label %dec_label_pc_2b628

dec_label_pc_2b628:                               ; preds = %dec_label_pc_2b5ff
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2b632:                               ; preds = %dec_label_pc_2b5ff
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  call void @anon1(ptr %3)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_2b6a6:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_2b6e4:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_2b722:
  call void @anon4(ptr %data)
  ret void
}

define void @anon4(ptr %data) local_unnamed_addr {
dec_label_pc_2b760:
  %0 = ptrtoint ptr %data to i64
  %stack_var_-120 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strncpy(ptr %data, ptr nonnull %3, i32 99)
  %5 = add i64 %0, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  call void @printLine(ptr %data)
  %7 = bitcast ptr %data to ptr
  call void @free(ptr %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %1, %8
  br i1 %9, label %dec_label_pc_2b7e9, label %dec_label_pc_2b7e4

dec_label_pc_2b7e4:                               ; preds = %dec_label_pc_2b760
  call void @__stack_chk_fail()
  br label %dec_label_pc_2b7e9

dec_label_pc_2b7e9:                               ; preds = %dec_label_pc_2b7e4, %dec_label_pc_2b760
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

