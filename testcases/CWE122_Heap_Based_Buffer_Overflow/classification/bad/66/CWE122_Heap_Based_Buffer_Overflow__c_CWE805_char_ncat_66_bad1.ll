define void @anon0() local_unnamed_addr {
dec_label_pc_2703c:
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = bitcast ptr %1 to ptr
  %3 = insertvalue [5 x ptr] undef, ptr %2, 0
  store [5 x ptr] %3, ptr %dataArray_-64, align 8
  %4 = bitcast ptr %dataArray_-64 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_2707e, label %dec_label_pc_27074

dec_label_pc_27074:                               ; preds = %dec_label_pc_2703c
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2707e:                               ; preds = %dec_label_pc_2703c
  %8 = inttoptr i64 %5 to ptr
  store i8 0, ptr %8, align 1
  %9 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_270ae, label %dec_label_pc_270a9

dec_label_pc_270a9:                               ; preds = %dec_label_pc_2707e
  call void @__stack_chk_fail()
  br label %dec_label_pc_270ae

dec_label_pc_270ae:                               ; preds = %dec_label_pc_270a9, %dec_label_pc_2707e
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_27139:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = inttoptr i64 %4 to ptr
  %7 = bitcast ptr %stack_var_-120 to ptr
  %8 = call ptr @strncat(ptr %6, ptr nonnull %7, i32 100)
  call void @printLine(ptr %6)
  %9 = inttoptr i64 %4 to ptr
  call void @free(ptr %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_271cc, label %dec_label_pc_271c7

dec_label_pc_271c7:                               ; preds = %dec_label_pc_27139
  call void @__stack_chk_fail()
  br label %dec_label_pc_271cc

dec_label_pc_271cc:                               ; preds = %dec_label_pc_271c7, %dec_label_pc_27139
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

