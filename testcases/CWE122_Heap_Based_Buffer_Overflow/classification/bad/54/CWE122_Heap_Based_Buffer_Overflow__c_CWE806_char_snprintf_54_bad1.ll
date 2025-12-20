@global_var_48715 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2a7e2:
  %0 = call ptr @malloc(i32 100)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_2a80d, label %dec_label_pc_2a803

dec_label_pc_2a803:                               ; preds = %dec_label_pc_2a7e2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2a80d:                               ; preds = %dec_label_pc_2a7e2
  %3 = bitcast ptr %0 to ptr
  %4 = call ptr @memset(ptr %0, i32 65, i32 99)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  call void @anon1(ptr %3)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_2a8ad:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_2a8eb:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_2a929:
  call void @anon4(ptr %data)
  ret void
}

define void @anon4(ptr %data) local_unnamed_addr {
dec_label_pc_2a967:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @strlen(ptr %data)
  %2 = bitcast ptr %stack_var_-72 to ptr
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %2, i32 %1, ptr @global_var_48715, ptr %data)
  call void @printLine(ptr %data)
  %4 = bitcast ptr %data to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_2aa17, label %dec_label_pc_2aa12

dec_label_pc_2aa12:                               ; preds = %dec_label_pc_2a967
  call void @__stack_chk_fail()
  br label %dec_label_pc_2aa17

dec_label_pc_2aa17:                               ; preds = %dec_label_pc_2aa12, %dec_label_pc_2a967
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

