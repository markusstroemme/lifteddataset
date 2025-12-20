define void @anon1() local_unnamed_addr {
dec_label_pc_12fd9:
  %stack_var_-16 = alloca ptr, align 8
  %0 = call ptr @malloc(i32 100)
  %1 = bitcast ptr %0 to ptr
  store ptr %1, ptr %stack_var_-16, align 8
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_13004, label %dec_label_pc_12ffa

dec_label_pc_12ffa:                               ; preds = %dec_label_pc_12fd9
  call void @exit(i32 -1)
  unreachable

dec_label_pc_13004:                               ; preds = %dec_label_pc_12fd9
  %4 = call ptr @memset(ptr %0, i32 65, i32 49)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = load ptr, ptr %stack_var_-16, align 8
  %9 = ptrtoint ptr %8 to i64
  call void @anon0(i64 %9)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_13103:
  %stack_var_-72 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %2 = call i32 @strlen(ptr %0)
  %3 = inttoptr i64 %myStruct to ptr
  %4 = call ptr @memcpy(ptr nonnull %stack_var_-72, ptr %3, i32 %2)
  call void @printLine(ptr %0)
  call void @free(ptr %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_131b3, label %dec_label_pc_131ae

dec_label_pc_131ae:                               ; preds = %dec_label_pc_13103
  call void @__stack_chk_fail()
  br label %dec_label_pc_131b3

dec_label_pc_131b3:                               ; preds = %dec_label_pc_131ae, %dec_label_pc_13103
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

