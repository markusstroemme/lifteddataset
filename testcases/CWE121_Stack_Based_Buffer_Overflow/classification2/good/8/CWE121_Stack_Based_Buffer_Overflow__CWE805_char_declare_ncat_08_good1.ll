@global_var_817b2 = external constant [21 x i8]

define i32 @staticReturnsFalse.559() local_unnamed_addr {
dec_label_pc_501b5:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_50263:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse.559()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_502a0, label %dec_label_pc_5028f

dec_label_pc_5028f:                               ; preds = %dec_label_pc_50263
  call void @printLine(ptr @global_var_817b2)
  %.pre = bitcast ptr %dataGoodBuffer_-240 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_502b8

dec_label_pc_502a0:                               ; preds = %dec_label_pc_50263
  %3 = ptrtoint ptr %stack_var_-232 to i64
  %4 = trunc i64 %3 to i8
  %5 = insertvalue [100 x i8] undef, i8 %4, 0
  store [100 x i8] %5, ptr %dataGoodBuffer_-240, align 8
  %6 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_502b8

dec_label_pc_502b8:                               ; preds = %dec_label_pc_502a0, %dec_label_pc_5028f
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = load i64, ptr %.pre-phi.reload, align 8
  %11 = inttoptr i64 %10 to ptr
  %12 = bitcast ptr %stack_var_-120 to ptr
  %13 = call ptr @strncat(ptr %11, ptr nonnull %12, i32 100)
  call void @printLine(ptr %11)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_50311, label %dec_label_pc_5030c

dec_label_pc_5030c:                               ; preds = %dec_label_pc_502b8
  call void @__stack_chk_fail()
  br label %dec_label_pc_50311

dec_label_pc_50311:                               ; preds = %dec_label_pc_5030c, %dec_label_pc_502b8
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

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

