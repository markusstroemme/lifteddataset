@global_var_48712 = external constant [3 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_2a592:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_2a5bd, label %dec_label_pc_2a5b3

dec_label_pc_2a5b3:                               ; preds = %dec_label_pc_2a592
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2a5bd:                               ; preds = %dec_label_pc_2a592
  %3 = bitcast ptr %0 to ptr
  %4 = call ptr @memset(ptr %0, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  call void @anon0(ptr %3)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_2a621:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_2a65f:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_2a730:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @strlen(ptr %data)
  %2 = bitcast ptr %stack_var_-72 to ptr
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %2, i32 %1, ptr @global_var_48712, ptr %data)
  call void @printLine(ptr %data)
  %4 = bitcast ptr %data to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_2a7e0, label %dec_label_pc_2a7db

dec_label_pc_2a7db:                               ; preds = %dec_label_pc_2a730
  call void @__stack_chk_fail()
  br label %dec_label_pc_2a7e0

dec_label_pc_2a7e0:                               ; preds = %dec_label_pc_2a7db, %dec_label_pc_2a730
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

