define void @anon0() local_unnamed_addr {
dec_label_pc_218d4:
  %0 = call ptr @malloc(i32 50)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_21907, label %dec_label_pc_218fd

dec_label_pc_218fd:                               ; preds = %dec_label_pc_218d4
  call void @exit(i32 -1)
  unreachable

dec_label_pc_21907:                               ; preds = %dec_label_pc_218d4
  %3 = bitcast ptr %0 to ptr
  store i8 0, ptr %3, align 1
  call void @anon1(ptr %3)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_2197b:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_219b9:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_219f7:
  call void @anon4(ptr %data)
  ret void
}

define void @anon4(ptr %data) local_unnamed_addr {
dec_label_pc_21a35:
  %0 = ptrtoint ptr %data to i64
  %stack_var_-120 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %data to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-120, i32 100)
  %5 = add i64 %0, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  call void @printLine(ptr %data)
  call void @free(ptr %3)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_21abe, label %dec_label_pc_21ab9

dec_label_pc_21ab9:                               ; preds = %dec_label_pc_21a35
  call void @__stack_chk_fail()
  br label %dec_label_pc_21abe

dec_label_pc_21abe:                               ; preds = %dec_label_pc_21ab9, %dec_label_pc_21a35
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

