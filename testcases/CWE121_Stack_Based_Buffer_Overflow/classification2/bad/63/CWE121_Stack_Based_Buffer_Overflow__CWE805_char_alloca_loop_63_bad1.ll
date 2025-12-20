@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_ff8b:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_ffd4

dec_label_pc_ffd4:                                ; preds = %dec_label_pc_ffd4, %dec_label_pc_ff8b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_ffeb, label %dec_label_pc_ffd4

dec_label_pc_ffeb:                                ; preds = %dec_label_pc_ffd4
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_10056

dec_label_pc_10056:                               ; preds = %dec_label_pc_10056, %dec_label_pc_ffeb
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_1006d, label %dec_label_pc_10056

dec_label_pc_1006d:                               ; preds = %dec_label_pc_10056
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %dataBadBuffer_-40 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  call void @anon1(ptr nonnull %dataBadBuffer_-40)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_100da, label %dec_label_pc_100d5

dec_label_pc_100d5:                               ; preds = %dec_label_pc_1006d
  call void @__stack_chk_fail()
  br label %dec_label_pc_100da

dec_label_pc_100da:                               ; preds = %dec_label_pc_100d5, %dec_label_pc_1006d
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_10242:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = ptrtoint ptr %dataPtr to i64
  %3 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_10299

dec_label_pc_10299:                               ; preds = %dec_label_pc_10242, %dec_label_pc_10299
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge2.reload to i64
  %5 = add i64 %4, %2
  %6 = add i64 %4, %3
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = inttoptr i64 %5 to ptr
  store i8 %8, ptr %9, align 1
  %10 = add i64 %4, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge2.reg2mem, align 8
  br i1 %12, label %dec_label_pc_102c0, label %dec_label_pc_10299

dec_label_pc_102c0:                               ; preds = %dec_label_pc_10299
  %13 = add i64 %2, 99
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  %15 = bitcast ptr %dataPtr to ptr
  call void @printLine(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_102ec, label %dec_label_pc_102e7

dec_label_pc_102e7:                               ; preds = %dec_label_pc_102c0
  call void @__stack_chk_fail()
  br label %dec_label_pc_102ec

dec_label_pc_102ec:                               ; preds = %dec_label_pc_102e7, %dec_label_pc_102c0
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

declare i64 @__readfsqword(i64) local_unnamed_addr

