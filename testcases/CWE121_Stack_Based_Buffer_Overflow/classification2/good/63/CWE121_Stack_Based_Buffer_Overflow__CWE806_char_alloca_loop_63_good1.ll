@global_var_fff = external global ptr
@global_var_1000 = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_109e1:
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBuffer_-32 = alloca ptr, align 8
  %data_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_10a2a

dec_label_pc_10a2a:                               ; preds = %dec_label_pc_10a2a, %dec_label_pc_109e1
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_10a41, label %dec_label_pc_10a2a

dec_label_pc_10a41:                               ; preds = %dec_label_pc_10a2a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %dataBuffer_-32, align 8
  %7 = inttoptr i64 %5 to ptr
  %8 = call ptr @memset(ptr %7, i32 65, i32 49)
  %9 = add i64 %5, 49
  %10 = inttoptr i64 %9 to ptr
  store i8 0, ptr %10, align 1
  call void @anon0(ptr nonnull %dataBuffer_-32)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_10ac8, label %dec_label_pc_10ac3

dec_label_pc_10ac3:                               ; preds = %dec_label_pc_10a41
  call void @__stack_chk_fail()
  br label %dec_label_pc_10ac8

dec_label_pc_10ac8:                               ; preds = %dec_label_pc_10ac3, %dec_label_pc_10a41
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_10baa:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %dataPtr to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_10c4e, label %dec_label_pc_10c24.lr.ph

dec_label_pc_10c24.lr.ph:                         ; preds = %dec_label_pc_10baa
  %4 = sext i32 %2 to i64
  %5 = ptrtoint ptr %dataPtr to i64
  %6 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_10c24

dec_label_pc_10c24:                               ; preds = %dec_label_pc_10c24.lr.ph, %dec_label_pc_10c24
  %.reload = load i64, ptr %.reg2mem, align 8
  %7 = add i64 %.reload, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = add i64 %.reload, %6
  %11 = inttoptr i64 %10 to ptr
  store i8 %9, ptr %11, align 1
  %12 = add nuw i64 %.reload, 1
  %13 = icmp ult i64 %12, %4
  store i64 %12, ptr %.reg2mem, align 8
  br i1 %13, label %dec_label_pc_10c24, label %dec_label_pc_10c4e

dec_label_pc_10c4e:                               ; preds = %dec_label_pc_10c24, %dec_label_pc_10baa
  call void @printLine(ptr %1)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_10c73, label %dec_label_pc_10c6e

dec_label_pc_10c6e:                               ; preds = %dec_label_pc_10c4e
  call void @__stack_chk_fail()
  br label %dec_label_pc_10c73

dec_label_pc_10c73:                               ; preds = %dec_label_pc_10c6e, %dec_label_pc_10c4e
  ret void
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

