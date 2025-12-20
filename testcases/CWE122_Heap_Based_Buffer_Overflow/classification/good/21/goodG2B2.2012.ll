@global_var_640e4 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_13468:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_640e4, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_134a8, label %dec_label_pc_13482

dec_label_pc_13482:                               ; preds = %dec_label_pc_13468
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_134a1, label %dec_label_pc_13497

dec_label_pc_13497:                               ; preds = %dec_label_pc_13482
  call void @exit(i32 -1)
  unreachable

dec_label_pc_134a1:                               ; preds = %dec_label_pc_13482
  %5 = bitcast ptr %2 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_134a8

dec_label_pc_134a8:                               ; preds = %dec_label_pc_134a1, %dec_label_pc_13468
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_134ae:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @global_var_640e4, align 4
  %1 = call ptr @anon0(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1350f

dec_label_pc_1350f:                               ; preds = %dec_label_pc_134ae, %dec_label_pc_1350f
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %5 = ptrtoint ptr %storemerge2.reload to i64
  %6 = add i64 %5, %3
  %7 = add i64 %5, %4
  %8 = inttoptr i64 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = inttoptr i64 %6 to ptr
  store i8 %9, ptr %10, align 1
  %11 = add i64 %5, 1
  %12 = inttoptr i64 %11 to ptr
  %13 = icmp ugt ptr %12, inttoptr (i64 99 to ptr)
  store ptr %12, ptr %storemerge2.reg2mem, align 8
  br i1 %13, label %dec_label_pc_13536, label %dec_label_pc_1350f

dec_label_pc_13536:                               ; preds = %dec_label_pc_1350f
  %14 = add i64 %3, 99
  %15 = inttoptr i64 %14 to ptr
  store i8 0, ptr %15, align 1
  call void @printLine(ptr %1)
  %16 = bitcast ptr %1 to ptr
  call void @free(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_1356e, label %dec_label_pc_13569

dec_label_pc_13569:                               ; preds = %dec_label_pc_13536
  call void @__stack_chk_fail()
  br label %dec_label_pc_1356e

dec_label_pc_1356e:                               ; preds = %dec_label_pc_13569, %dec_label_pc_13536
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

