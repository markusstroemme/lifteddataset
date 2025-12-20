define void @anon3() local_unnamed_addr {
dec_label_pc_2644b:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_2647e, label %dec_label_pc_26474

dec_label_pc_26474:                               ; preds = %dec_label_pc_2644b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2647e:                               ; preds = %dec_label_pc_2644b
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  call void @anon0(ptr %3)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_264c8:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_26506:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_265a5:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %stack_var_-120 to ptr
  %3 = call ptr @strncat(ptr %data, ptr nonnull %2, i32 100)
  call void @printLine(ptr %data)
  %4 = bitcast ptr %data to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_26623, label %dec_label_pc_2661e

dec_label_pc_2661e:                               ; preds = %dec_label_pc_265a5
  call void @__stack_chk_fail()
  br label %dec_label_pc_26623

dec_label_pc_26623:                               ; preds = %dec_label_pc_2661e, %dec_label_pc_265a5
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

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

