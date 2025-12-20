@global_var_4c148 = external constant [21 x i8]
@global_var_64120 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_19f81:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_64120, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_19fac, label %dec_label_pc_19f9b

dec_label_pc_19f9b:                               ; preds = %dec_label_pc_19f81
  call void @printLine(ptr @global_var_4c148)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_19fd2

dec_label_pc_19fac:                               ; preds = %dec_label_pc_19f81
  %2 = call ptr @malloc(i32 100)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_19fcb, label %dec_label_pc_19fc1

dec_label_pc_19fc1:                               ; preds = %dec_label_pc_19fac
  call void @exit(i32 -1)
  unreachable

dec_label_pc_19fcb:                               ; preds = %dec_label_pc_19fac
  %5 = bitcast ptr %2 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_19fd2

dec_label_pc_19fd2:                               ; preds = %dec_label_pc_19fcb, %dec_label_pc_19f9b
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_19fd8:
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_64120, align 4
  %1 = call ptr @anon0(ptr null)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %4 = load i64, ptr %stack_var_-136, align 8
  %5 = bitcast ptr %1 to ptr
  store i64 %4, ptr %5, align 8
  %6 = add i64 %2, 8
  %7 = inttoptr i64 %6 to ptr
  %8 = add i64 %2, 16
  %9 = inttoptr i64 %8 to ptr
  %10 = add i64 %2, 24
  %11 = inttoptr i64 %10 to ptr
  %12 = add i64 %2, 32
  %13 = inttoptr i64 %12 to ptr
  %14 = add i64 %2, 40
  %15 = inttoptr i64 %14 to ptr
  %16 = add i64 %2, 48
  %17 = inttoptr i64 %16 to ptr
  %18 = add i64 %2, 56
  %19 = inttoptr i64 %18 to ptr
  %20 = add i64 %2, 64
  %21 = inttoptr i64 %20 to ptr
  %22 = add i64 %2, 72
  %23 = inttoptr i64 %22 to ptr
  %24 = add i64 %2, 80
  %25 = inttoptr i64 %24 to ptr
  %26 = add i64 %2, 88
  %27 = inttoptr i64 %26 to ptr
  %28 = add i64 %2, 96
  %29 = inttoptr i64 %28 to ptr
  %30 = add i64 %2, 99
  %31 = inttoptr i64 %30 to ptr
  store i8 0, ptr %31, align 1
  call void @printLine(ptr %1)
  call void @free(ptr %5)
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %0, %32
  br i1 %33, label %dec_label_pc_1a0e9, label %dec_label_pc_1a0e4

dec_label_pc_1a0e4:                               ; preds = %dec_label_pc_19fd8
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a0e9

dec_label_pc_1a0e9:                               ; preds = %dec_label_pc_1a0e4, %dec_label_pc_19fd8
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

