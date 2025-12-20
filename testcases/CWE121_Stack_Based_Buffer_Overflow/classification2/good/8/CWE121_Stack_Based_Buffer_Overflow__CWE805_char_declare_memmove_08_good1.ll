@global_var_816d2 = external constant [21 x i8]

define i32 @staticReturnsFalse.506() local_unnamed_addr {
dec_label_pc_4c21d:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4c2d9:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse.506()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4c316, label %dec_label_pc_4c305

dec_label_pc_4c305:                               ; preds = %dec_label_pc_4c2d9
  call void @printLine(ptr @global_var_816d2)
  %.pre = bitcast ptr %dataGoodBuffer_-240 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_4c32e

dec_label_pc_4c316:                               ; preds = %dec_label_pc_4c2d9
  %3 = ptrtoint ptr %stack_var_-232 to i64
  %4 = trunc i64 %3 to i8
  %5 = insertvalue [100 x i8] undef, i8 %4, 0
  store [100 x i8] %5, ptr %dataGoodBuffer_-240, align 8
  %6 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_4c32e

dec_label_pc_4c32e:                               ; preds = %dec_label_pc_4c316, %dec_label_pc_4c305
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = load i64, ptr %.pre-phi.reload, align 8
  %11 = inttoptr i64 %10 to ptr
  %12 = call ptr @memmove(ptr %11, ptr nonnull %stack_var_-120, i32 100)
  %13 = add i64 %10, 99
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  %15 = load i64, ptr %.pre-phi.reload, align 8
  %16 = inttoptr i64 %15 to ptr
  call void @printLine(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_4c395, label %dec_label_pc_4c390

dec_label_pc_4c390:                               ; preds = %dec_label_pc_4c32e
  call void @__stack_chk_fail()
  br label %dec_label_pc_4c395

dec_label_pc_4c395:                               ; preds = %dec_label_pc_4c390, %dec_label_pc_4c32e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

