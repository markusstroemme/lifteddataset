@global_var_b7278 = external constant [3 x i8]
@global_var_b727b = external constant [21 x i8]

define i32 @staticReturnsFalse() local_unnamed_addr {
dec_label_pc_b1a6:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_b260:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_b29d, label %dec_label_pc_b28c

dec_label_pc_b28c:                                ; preds = %dec_label_pc_b260
  call void @printLine(ptr @global_var_b727b)
  %.pre = bitcast ptr %dataGoodBuffer_-240 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_b2b5

dec_label_pc_b29d:                                ; preds = %dec_label_pc_b260
  %3 = ptrtoint ptr %stack_var_-232 to i64
  %4 = trunc i64 %3 to i8
  %5 = insertvalue [100 x i8] undef, i8 %4, 0
  store [100 x i8] %5, ptr %dataGoodBuffer_-240, align 8
  %6 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_b2b5

dec_label_pc_b2b5:                                ; preds = %dec_label_pc_b29d, %dec_label_pc_b28c
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = load i64, ptr %.pre-phi.reload, align 8
  %11 = inttoptr i64 %10 to ptr
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %11, i32 100, ptr @global_var_b7278, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %11)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_b31a, label %dec_label_pc_b315

dec_label_pc_b315:                                ; preds = %dec_label_pc_b2b5
  call void @__stack_chk_fail()
  br label %dec_label_pc_b31a

dec_label_pc_b31a:                                ; preds = %dec_label_pc_b315, %dec_label_pc_b2b5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9cb1b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9cb3e, label %dec_label_pc_9cb32

dec_label_pc_9cb32:                               ; preds = %dec_label_pc_9cb1b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9cb3e

dec_label_pc_9cb3e:                               ; preds = %dec_label_pc_9cb32, %dec_label_pc_9cb1b
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

