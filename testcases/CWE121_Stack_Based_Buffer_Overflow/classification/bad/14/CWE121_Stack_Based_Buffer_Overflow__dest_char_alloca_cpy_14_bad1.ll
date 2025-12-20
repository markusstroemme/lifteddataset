@global_var_1000 = external global i32
@global_var_fff = external global i32
@global_var_89064 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_13b88:
  %dataGoodBuffer_-144.0.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %data_-152 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-152 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_13bd4

dec_label_pc_13bd4:                               ; preds = %dec_label_pc_13bd4, %dec_label_pc_13b88
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_13beb, label %dec_label_pc_13bd4

dec_label_pc_13beb:                               ; preds = %dec_label_pc_13bd4
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_13c56

dec_label_pc_13c56:                               ; preds = %dec_label_pc_13c56, %dec_label_pc_13beb
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_13c6d, label %dec_label_pc_13c56

dec_label_pc_13c6d:                               ; preds = %dec_label_pc_13c56
  %8 = load i32, ptr @global_var_89064, align 4
  %9 = icmp eq i32 %8, 5
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_13cca, label %dec_label_pc_13cb5

dec_label_pc_13cb5:                               ; preds = %dec_label_pc_13c6d
  %11 = and i64 %5, -16
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 16
  store ptr %12, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  br label %dec_label_pc_13cca

dec_label_pc_13cca:                               ; preds = %dec_label_pc_13cb5, %dec_label_pc_13c6d
  %dataGoodBuffer_-144.0.reload = load ptr, ptr %dataGoodBuffer_-144.0.reg2mem, align 8
  %13 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %14 = bitcast ptr %stack_var_-120 to ptr
  %15 = call ptr @strcpy(ptr %dataGoodBuffer_-144.0.reload, ptr nonnull %14)
  call void @printLine(ptr %dataGoodBuffer_-144.0.reload)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  br i1 %17, label %dec_label_pc_13d1e, label %dec_label_pc_13d19

dec_label_pc_13d19:                               ; preds = %dec_label_pc_13cca
  call void @__stack_chk_fail()
  br label %dec_label_pc_13d1e

dec_label_pc_13d1e:                               ; preds = %dec_label_pc_13d19, %dec_label_pc_13cca
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

