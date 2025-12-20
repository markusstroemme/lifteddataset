define void @anon0() local_unnamed_addr {
dec_label_pc_13094:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 50)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_130d7, label %dec_label_pc_130cd

dec_label_pc_130cd:                               ; preds = %dec_label_pc_13094
  call void @exit(i32 -1)
  unreachable

dec_label_pc_130d7:                               ; preds = %dec_label_pc_13094
  %4 = bitcast ptr %1 to ptr
  store i8 0, ptr %4, align 1
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = ptrtoint ptr %1 to i64
  %7 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_13102

dec_label_pc_13102:                               ; preds = %dec_label_pc_130d7, %dec_label_pc_13102
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge2.reload to i64
  %9 = add i64 %8, %6
  %10 = add i64 %8, %7
  %11 = inttoptr i64 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = inttoptr i64 %9 to ptr
  store i8 %12, ptr %13, align 1
  %14 = add i64 %8, 1
  %15 = inttoptr i64 %14 to ptr
  %16 = icmp ugt ptr %15, inttoptr (i64 99 to ptr)
  store ptr %15, ptr %storemerge2.reg2mem, align 8
  br i1 %16, label %dec_label_pc_13129, label %dec_label_pc_13102

dec_label_pc_13129:                               ; preds = %dec_label_pc_13102
  %17 = add i64 %6, 99
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  call void @printLine(ptr %4)
  call void @free(ptr %1)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_13161, label %dec_label_pc_1315c

dec_label_pc_1315c:                               ; preds = %dec_label_pc_13129
  call void @__stack_chk_fail()
  br label %dec_label_pc_13161

dec_label_pc_13161:                               ; preds = %dec_label_pc_1315c, %dec_label_pc_13129
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

declare i64 @__readfsqword(i64) local_unnamed_addr

