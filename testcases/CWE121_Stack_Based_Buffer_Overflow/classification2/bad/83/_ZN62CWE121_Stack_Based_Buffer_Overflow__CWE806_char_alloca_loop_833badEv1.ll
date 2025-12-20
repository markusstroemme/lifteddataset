@global_var_fff = external global ptr
@0 = external global i32
@global_var_1000 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_6290c:
  %0 = ptrtoint ptr %result to i64
  %1 = ptrtoint ptr %arg2 to i64
  store i64 %1, ptr %result, align 8
  %2 = call ptr @memset(ptr %result, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_62956:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %result to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_629f5, label %dec_label_pc_629c8.lr.ph

dec_label_pc_629c8.lr.ph:                         ; preds = %dec_label_pc_62956
  %4 = ptrtoint ptr %result to i64
  %5 = sext i32 %2 to i64
  %6 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_629c8

dec_label_pc_629c8:                               ; preds = %dec_label_pc_629c8.lr.ph, %dec_label_pc_629c8
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = add i64 %storemerge1.reload, %4
  %8 = inttoptr i64 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = add i64 %storemerge1.reload, %6
  %11 = inttoptr i64 %10 to ptr
  store i8 %9, ptr %11, align 1
  %12 = add nuw i64 %storemerge1.reload, 1
  %13 = icmp ult i64 %12, %5
  store i64 %12, ptr %storemerge1.reg2mem, align 8
  br i1 %13, label %dec_label_pc_629c8, label %dec_label_pc_629f5

dec_label_pc_629f5:                               ; preds = %dec_label_pc_629c8, %dec_label_pc_62956
  call void @printLine(ptr %1)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_62a1d, label %dec_label_pc_62a18

dec_label_pc_62a18:                               ; preds = %dec_label_pc_629f5
  call void @__stack_chk_fail()
  br label %dec_label_pc_62a1d

dec_label_pc_62a1d:                               ; preds = %dec_label_pc_62a18, %dec_label_pc_629f5
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_62b33:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_62b7c

dec_label_pc_62b7c:                               ; preds = %dec_label_pc_62b7c, %dec_label_pc_62b33
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_62b93, label %dec_label_pc_62b7c

dec_label_pc_62b93:                               ; preds = %dec_label_pc_62b7c
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  call void @anon0(ptr nonnull %stack_var_-40, ptr %6)
  call void @anon1(ptr nonnull %stack_var_-40)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_62c0b, label %dec_label_pc_62c06

dec_label_pc_62c06:                               ; preds = %dec_label_pc_62b93
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_62c0b

dec_label_pc_62c0b:                               ; preds = %dec_label_pc_62c06, %dec_label_pc_62b93
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

