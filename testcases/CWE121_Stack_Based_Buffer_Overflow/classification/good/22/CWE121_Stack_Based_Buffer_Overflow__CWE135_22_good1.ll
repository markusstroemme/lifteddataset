@global_var_1000 = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE135_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_ba523 = external constant [21 x i8]
@global_var_fff = external global i32
@global_var_ba448 = external constant [2 x i8]
@global_var_c074c = external constant [5 x i32]

define void @anon1() local_unnamed_addr {
dec_label_pc_61da7:
  store i32 0, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE135_22_goodB2G1Global, align 4
  call void @anon0(ptr @global_var_ba448)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_61f7c:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE135_22_goodB2G1Global, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_61fb9, label %dec_label_pc_61fa5

dec_label_pc_61fa5:                               ; preds = %dec_label_pc_61f7c
  call void @printLine(ptr @global_var_ba523)
  br label %dec_label_pc_62079

dec_label_pc_61fb9:                               ; preds = %dec_label_pc_61f7c
  %3 = ptrtoint ptr %stack_var_-56 to i64
  %4 = bitcast ptr %data to ptr
  %5 = call i32 @wcslen(ptr %4)
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = add nsw i64 %7, 27
  %9 = udiv i64 %8, 16
  %10 = mul i64 %9, 16
  %11 = and i64 %10, -4096
  %12 = sub i64 %3, %11
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_62006

dec_label_pc_62006:                               ; preds = %dec_label_pc_62006, %dec_label_pc_61fb9
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %13 = icmp eq i64 %rsp.0.reload, %12
  %14 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %14, ptr %rsp.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_6201d, label %dec_label_pc_62006

dec_label_pc_6201d:                               ; preds = %dec_label_pc_62006
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %15 = and i64 %10, %constexpr
  %16 = sub nsw i64 15, %15
  %17 = add i64 %16, %12
  %18 = and i64 %17, -16
  %19 = inttoptr i64 %18 to ptr
  %20 = call ptr @wcscpy(ptr %19, ptr %4)
  call void @printWLine(ptr %19)
  br label %dec_label_pc_62079

dec_label_pc_62079:                               ; preds = %dec_label_pc_6201d, %dec_label_pc_61fa5
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_6208e, label %dec_label_pc_62089

dec_label_pc_62089:                               ; preds = %dec_label_pc_62079
  call void @__stack_chk_fail()
  br label %dec_label_pc_6208e

dec_label_pc_6208e:                               ; preds = %dec_label_pc_62089, %dec_label_pc_62079
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06e1:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a0713, label %dec_label_pc_a06f8

dec_label_pc_a06f8:                               ; preds = %dec_label_pc_a06e1
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_c074c)
  br label %dec_label_pc_a0713

dec_label_pc_a0713:                               ; preds = %dec_label_pc_a06f8, %dec_label_pc_a06e1
  ret void
}

declare i32 @wcslen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

