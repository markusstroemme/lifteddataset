@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_1790e:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_17957

dec_label_pc_17957:                               ; preds = %dec_label_pc_17957, %dec_label_pc_1790e
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_1796e, label %dec_label_pc_17957

dec_label_pc_1796e:                               ; preds = %dec_label_pc_17957
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_179d9

dec_label_pc_179d9:                               ; preds = %dec_label_pc_179d9, %dec_label_pc_1796e
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_179f0, label %dec_label_pc_179d9

dec_label_pc_179f0:                               ; preds = %dec_label_pc_179d9
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %7 = add i64 %4, %constexpr5
  %8 = and i64 %7, -16
  %9 = inttoptr i64 %8 to ptr
  store ptr %9, ptr %dataBadBuffer_-40, align 8
  store i8 0, ptr %9, align 16
  %10 = bitcast ptr %dataBadBuffer_-40 to ptr
  call void @anon0(ptr nonnull %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_17a5d, label %dec_label_pc_17a58

dec_label_pc_17a58:                               ; preds = %dec_label_pc_179f0
  call void @__stack_chk_fail()
  br label %dec_label_pc_17a5d

dec_label_pc_17a5d:                               ; preds = %dec_label_pc_17a58, %dec_label_pc_179f0
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_17aff:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = bitcast ptr %stack_var_-120 to ptr
  %3 = call ptr @strcpy(ptr %dataVoidPtr, ptr nonnull %2)
  call void @printLine(ptr %dataVoidPtr)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_17b88, label %dec_label_pc_17b83

dec_label_pc_17b83:                               ; preds = %dec_label_pc_17aff
  call void @__stack_chk_fail()
  br label %dec_label_pc_17b88

dec_label_pc_17b88:                               ; preds = %dec_label_pc_17b83, %dec_label_pc_17aff
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

